FROM rust:1.67 AS builder
COPY . .
RUN --mount=type=tmpfs,target=/root/.cargo cargo build --release

FROM debian:buster-slim
COPY --from=builder ./target/release/rasuti ./target/release/rasuti
CMD ["./target/release/rasuti"]